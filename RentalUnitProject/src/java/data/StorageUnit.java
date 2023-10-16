package data;




public class StorageUnit {
    private String id;
    private String size;
    private boolean isAvailable;

    // Constructor
    public StorageUnit(String id, String size, boolean isAvailable) {
        this.id = id;
        this.size = size;
        this.isAvailable = isAvailable;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public void setAvailable(boolean isAvailable) {
        this.isAvailable = isAvailable;
    }
}
