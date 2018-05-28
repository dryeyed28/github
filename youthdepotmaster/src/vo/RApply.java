package vo;

public class RApply {
	RKeeper rKeeper;
	RMeta rMeta;
	ROption rOption;
	RProject rProject;
	RStory rStory;
	
	public RApply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RApply(RKeeper rKeeper, RMeta rMeta, ROption rOption, RProject rProject, RStory rStory) {
		super();
		this.rKeeper = rKeeper;
		this.rMeta = rMeta;
		this.rOption = rOption;
		this.rProject = rProject;
		this.rStory = rStory;
	}
	public RKeeper getrKeeper() {
		return rKeeper;
	}
	public void setrKeeper(RKeeper rKeeper) {
		this.rKeeper = rKeeper;
	}
	public RMeta getrMeta() {
		return rMeta;
	}
	public void setrMeta(RMeta rMeta) {
		this.rMeta = rMeta;
	}
	public ROption getrOption() {
		return rOption;
	}
	public void setrOption(ROption rOption) {
		this.rOption = rOption;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public RStory getrStory() {
		return rStory;
	}
	public void setrStory(RStory rStory) {
		this.rStory = rStory;
	}
}
