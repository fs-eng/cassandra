package org.apache.cassandra.io.sstable;

import org.apache.cassandra.config.CFMetaData;
import org.apache.cassandra.db.PartitionColumns;

import java.io.File;

/**
 * A Factory passed to the Builder via the withWriterFactory. If provided, the Builder will instantiate
 * an implementation of AbstractSSTableSimpleWriter using this factory.
 * Use this to pass your own specialization of AbstractSSTableSimpleWriter to CQLSSTableWriter.
 */
public interface SSTableWriterFactory
{
  /**
   * Called by Builder to instantiate an AbstractSSTableSimpleWriter if provided via
   * the withWriterFactory method.
   *
   * @param directory directory specified via inDirectory
   * @param metadata  CFMetaData derived from the schema specified via withSchema
   * @param columns PartitionColumns derived from the query
   * @param bufferSize Size of desired buffer (in MB) as specified via withBufferSizeInMB
   * @return constructed implementation of AbstractSSTableSimpleWriter
   */
  public AbstractSSTableSimpleWriter createWriter(File directory, CFMetaData metadata, PartitionColumns columns, long bufferSize);
}
