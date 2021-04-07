package com.hbrassapp.demo.Models;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface SystemLoginRepo extends CrudRepository <System_Login, String> {
    @Query("SELECT l FROM System_Login l WHERE l.username = :uname")
    Optional<System_Login> findByUname(@Param("uname") String uname);
    //@Query("SELECT l FROM System_Login l WHERE l.privileges = :admin");
    //Optional<System_Login> findByUname(@Param("privileges") String admin);
}
