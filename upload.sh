# first copy ~/.m2/repository/org/apache/cassandra to $base

base=~/tmp/repo/cassandra
version=3.0.9-fs-b4

artifact=cassandra-parent
mvn deploy:deploy-file \
  -DartifactId=$artifact \
  -DgroupId=org.apache.cassandra \
  -Dversion=$version \
  -Dfile=$base/$artifact/$version/$artifact-$version.pom \
  -Dpackaging=pom \
  -DrepositoryId=Unapproved \
  -Durl=https://mvn.fsglobal.net/content/repositories/unapproved

artifact=cassandra-thrift
mvn deploy:deploy-file \
  -DartifactId=$artifact \
  -DgroupId=org.apache.cassandra \
  -Dversion=$version \
  -Dfile=$base/$artifact/$version/$artifact-$version.jar \
  -DpomFile=$base/$artifact/$version/$artifact-$version.pom \
  -Dpackaging=jar \
  -DrepositoryId=Unapproved \
  -Durl=https://mvn.fsglobal.net/content/repositories/unapproved

artifact=cassandra-all
mvn deploy:deploy-file \
  -DartifactId=$artifact \
  -DgroupId=org.apache.cassandra \
  -Dversion=$version \
  -Dfile=$base/$artifact/$version/$artifact-$version.jar \
  -DpomFile=$base/$artifact/$version/$artifact-$version.pom \
  -Dpackaging=jar \
  -DrepositoryId=Unapproved \
  -Durl=https://mvn.fsglobal.net/content/repositories/unapproved

