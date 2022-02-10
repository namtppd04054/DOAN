package polycomputer.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import polycomputer.dao.BanPhimDao;
import polycomputer.dao.CPUDao;
import polycomputer.dao.CongKetNoiDao;
import polycomputer.dao.CongXuatCauHinhDao;
import polycomputer.dao.CustomerDao;
import polycomputer.entity.BanPhim;
import polycomputer.entity.CPU;
import polycomputer.entity.CongKetNoi;
import polycomputer.entity.CongXuatCauHinh;
import polycomputer.entity.Customer;
import polycomputer.service.BanPhimService;
import polycomputer.service.CPUService;
import polycomputer.service.CongKetNoiService;
import polycomputer.service.CongXuatCauHinhService;
import polycomputer.service.CustomerService;


@Service
public class CPUServiceImpl implements CPUService {
@Autowired
CPUDao dao;
@Override
public List<CPU> findAll() {
	
	return dao.findAll();
}
@Override
public CPU findById(Integer id) {
	return dao.findById(id).get();
}
@Override
public CPU create(CPU CPU) {
	return dao.save(CPU);
}
@Override
public CPU update(CPU CPU) {
	return dao.save(CPU);


}
@Override
public void deleteById(Integer id) {
	 dao.deleteById(id);		
}



}
