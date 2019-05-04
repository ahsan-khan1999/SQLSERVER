create login mylogin with password='mynews'
create user ahsankhan for login mylogin

use Aptach
revoke select on STUDENT from ahsankhan
select * from STUDENT

