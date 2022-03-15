import "ds-test/test.sol";
import "../Which.sol";


contract WhichTest is DSTest {

    // contracts
    Which internal which;

    function setUp() public virtual {
        which = new Which();
    }

    function testA() public {
        which.a();
    }
    function testB() public {
        which.b();
    }
}