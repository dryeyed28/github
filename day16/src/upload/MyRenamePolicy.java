package upload;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File origin) {
		String oName = origin.getName();
		/*File newFile  = new File(oName + "_");
		return newFile;*/
		int index = oName.indexOf(".");
		if(index < 0) {
			return null;
		} else {
			String fileName = oName.substring(0, index);
			String ext = oName.substring(index);
			String pattern = "yyMMddhhmmss";
			SimpleDateFormat sdf = new SimpleDateFormat(pattern);
			String now = sdf.format(new Date());
			String newFileName = fileName + "_" + now + ext;
			//return new File(newFileName);
			File newFile = new File(origin.getParentFile(), newFileName);
			origin.renameTo(newFile);
			return newFile;
		}
	}

}
