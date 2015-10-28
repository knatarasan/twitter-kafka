java -cp target/twitter-stream-0.0.1-SNAPSHOT.jar com.saurzcode.twitter.TwitterKafkaProducer ur0yZLSCOtE7TUOmGgv0OeOFG v2JLWcZKXktlJ9bpmjmlfLBzCoa12Qpwxfx7GouUvcjfPDmHDN 31794869-LKFB0qa2DcellcCKfgY2h4vW0BCwGWAjHTIrIeMnr 2paAAhkd0fE2Eytn3zYYMcRNzlPJ1cMUSNiys9yCd2zhC


String consumerKey, String consumerSecret,String token, String secret


mvn exec:java -Dexec.mainClass="com.saurzcode.twitter.TwitterKafkaProducer" - See more at: http://www.vineetmanohar.com/2009/11/3-ways-to-run-java-main-from-maven/#sthash.YPGE93JU.dpuf

mvn exec:java -Dexec.mainClass="com.saurzcode.twitter.TwitterKafkaProducer" -Dexec.args="ur0yZLSCOtE7TUOmGgv0OeOFG v2JLWcZKXktlJ9bpmjmlfLBzCoa12Qpwxfx7GouUvcjfPDmHDN 31794869-LKFB0qa2DcellcCKfgY2h4vW0BCwGWAjHTIrIeMnr 2paAAhkd0fE2Eytn3zYYMcRNzlPJ1cMUSNiys9yCd2zhC"
