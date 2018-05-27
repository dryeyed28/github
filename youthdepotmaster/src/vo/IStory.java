package vo;

public class IStory {
	private IProject iProject;
	private String iPJT_story;
	private String iPJT_sumnail;
	private String iPJT_message;
	private String iPJT_tag;
	public IStory() {
		super();
	}
	public IStory(IProject iProject, String iPJT_story, String iPJT_sumnail, String iPJT_message, String iPJT_tag) {
		super();
		this.iProject = iProject;
		this.iPJT_story = iPJT_story;
		this.iPJT_sumnail = iPJT_sumnail;
		this.iPJT_message = iPJT_message;
		this.iPJT_tag = iPJT_tag;
	}
	public IProject getiProject() {
		return iProject;
	}
	public void setiProject(IProject iProject) {
		this.iProject = iProject;
	}
	public String getiPJT_story() {
		return iPJT_story;
	}
	public void setiPJT_story(String iPJT_story) {
		this.iPJT_story = iPJT_story;
	}
	public String getiPJT_sumnail() {
		return iPJT_sumnail;
	}
	public void setiPJT_sumnail(String iPJT_sumnail) {
		this.iPJT_sumnail = iPJT_sumnail;
	}
	public String getiPJT_message() {
		return iPJT_message;
	}
	public void setiPJT_message(String iPJT_message) {
		this.iPJT_message = iPJT_message;
	}
	public String getiPJT_tag() {
		return iPJT_tag;
	}
	public void setiPJT_tag(String iPJT_tag) {
		this.iPJT_tag = iPJT_tag;
	}

}
