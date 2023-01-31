package springTeam5._03_product.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductCommentRepository extends JpaRepository<ProductComment, Integer>  {

//	透過 ProdID 搜尋全部的 commentBean
	@Query(value = "from ProductComment where prodid like concat('%', ?1, '%') order by commentDate")
	public List<ProductComment> findByAllLike(Integer prodID);
	
//	刪除某條Comment
	public void deleteByCommentID(Integer commentid);

}
