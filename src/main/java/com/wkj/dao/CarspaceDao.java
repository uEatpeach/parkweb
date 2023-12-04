package com.wkj.dao;

import com.wkj.pojo.Carspace;
import com.wkj.pojo.Carstation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CarspaceDao {
    public int insertCarspace(Carspace carspace);

    public Carspace selectCpAndCsById(@Param("id") int id);

    public Carspace selectByName(@Param("name") String name);

    public List<Carstation> carspaceList(@Param("id") int id, @Param("start") int start, @Param("rows") int rows);

    public List<Carstation> carspaceListInto(@Param("id") int id);

    public int updateCarspace(Carspace carspace);

    public int updateCarspacePriceAndTime(Carspace carspace);

    public int updateCarspaceState(Carspace carspace);

    public int deleteCarspace(@Param("id") int id);

    public int count(@Param("id") int id);

    public int countSpace();

    public int countPark(@Param("state") int state);
}
