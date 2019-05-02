import com.lanyue.LanyueAppliction;
import com.lanyue.service.CooperativeService;
import com.lanyue.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = LanyueAppliction.class)
public class test {
    @Autowired
    private CooperativeService cooperativeService;
    @Autowired
    private ProductService productService;
    @Test
    public void test1(){
        cooperativeService.findByFooter();
    }
    @Test
    public void test2(){
        productService.findByList();
    }
}
