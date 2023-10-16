package data;




public abstract class StorageUnitManager {

    public abstract void addUnit(StorageUnit unit);

    public abstract void removeUnit(String id);

    public abstract StorageUnit getUnit(String id);

    // Generic method to search based on a given criterion
    public <T> T search(T criterion) {
        // Implementation will be in the subclass
        return null;
    }
}
