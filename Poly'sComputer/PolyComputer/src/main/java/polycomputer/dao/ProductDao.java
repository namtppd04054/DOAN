package polycomputer.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import polycomputer.entity.Product;

@Repository
public interface ProductDao extends JpaRepository<Product, Integer>{

}
