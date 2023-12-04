package com.wkj.service;

import com.wkj.pojo.Carstation;

import java.util.List;

public interface CarstationService {
    public int addCarstation(Carstation carstation);

    public int deleteCarstation(int id);

    public int updateCarstation(Carstation carstation);

    public int updateCarstationTotal(Carstation carstation);

    public List<Carstation> cList();
}
