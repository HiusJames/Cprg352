package ca.sait.lab6.services;

import ca.sait.lab6.Models.*;
import ca.sait.lab6.Dataaccess.*;
import java.util.List;

public class RoleService {
    private RoleDB roleDB = new RoleDB();

    public List<Role> getAll() throws Exception {
        List<Role> roles = this.roleDB.getAll();
        return roles;
    }
}
