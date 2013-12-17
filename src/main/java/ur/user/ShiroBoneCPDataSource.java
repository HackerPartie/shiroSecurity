package ur.user;

import com.jolbox.bonecp.BoneCPDataSource;

/**
 * Created by jens on 12/16/13.
 */
public class ShiroBoneCPDataSource extends BoneCPDataSource {

	private static final long serialVersionUID = 1L;

	public ShiroBoneCPDataSource() {
        super();
        this.setDriverClass("com.mysql.jdbc.Driver");
        this.setJdbcUrl("jdbc:mysql://localhost:3306/spring_test");
        this.setUsername("jens");
        this.setPassword("option");
        this.setMaxConnectionsPerPartition(10);
    }

    public ShiroBoneCPDataSource(BoneCPDataSource config) {
        super(config);
    }

}
