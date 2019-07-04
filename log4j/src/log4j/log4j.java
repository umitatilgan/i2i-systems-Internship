package log4j;
 
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
 
public class log4j {
private static final Logger log = Logger.getLogger(log4j.class);
 
public static void main(String[] args) {
 
        log.info("info");
        log.warn("warn");
        log.error("error");
        log.fatal("fatal");
        log.debug("debug");
}
 
}