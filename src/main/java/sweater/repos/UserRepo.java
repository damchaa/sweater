package sweater.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import sweater.model.User;

public interface UserRepo extends JpaRepository<User, Long> {

    User findByUsername(String name);
}
