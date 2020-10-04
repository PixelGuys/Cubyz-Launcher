package io.cubyz.ui;

import javax.swing.JPanel;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.image.BufferedImage;

import javax.swing.JLabel;
import javax.swing.JTextPane;

import io.cubyz.github.GithubRelease;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.LayoutManager;

import javax.swing.JCheckBox;

public class ReleaseInfoPanel extends JPanel implements LayoutManager {
	private final JLabel name = new JLabel();
	final JCheckBox moreInfo = new JCheckBox("more info");
	private final JTextPane info = new JTextPane();
	final GithubRelease release;
	private BufferedImage image = null;
	private final MainGUI container;
	private int maxWidth;
	private int imageY;

	public ReleaseInfoPanel(GithubRelease githubRelease, MainGUI container, int width) {
		setLayout(this);
		this.container = container;
		release = githubRelease;
		name.setText(release.name);
		moreInfo.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				if(moreInfo.isSelected()) {
					info.setText(release.description);
					image = release.getImage();
				} else {
					info.setText("");
					image = null;
				}
			}
		});
		info.setContentType("text/html");
		add(name);
		add(moreInfo);
		add(info);
	}
	
	@Override
	public void paint(Graphics g) {
		super.paint(g);
		if(image != null) {
			int height = image.getHeight()*maxWidth/image.getWidth();
			g.drawImage(image, 0, imageY, maxWidth, height, null);
		}
		maxWidth = this.getPreferredSize().width;
	}

	@Override
	public void addLayoutComponent(String arg0, Component arg1) {}

	@Override
	public void layoutContainer(Container arg0) {}

	@Override
	public Dimension minimumLayoutSize(Container arg0) {
		return preferredLayoutSize(arg0);
	}

	@Override
	public Dimension preferredLayoutSize(Container arg0) {
		int maxWidth = container.getSize().width - 30; // Correct for the size of the scroll bar.
		if(this.maxWidth == maxWidth) return getSize();
		this.maxWidth = maxWidth;
		// Set the positions of the components correctly and determine their size:
		int y = 0;
		name.setLocation(0, y);
		name.setSize(name.getPreferredSize());
		moreInfo.setLocation(maxWidth - moreInfo.getSize().width, y);
		moreInfo.setSize(moreInfo.getPreferredSize());
		y += Math.max(name.getHeight(), moreInfo.getHeight());
		imageY = y;
		if(image != null) {
			int height = image.getHeight()*maxWidth/image.getWidth();
			y += height;
		}
		info.getPreferredSize().width = maxWidth;
		info.setBounds(0, y, maxWidth, info.getPreferredSize().height);
		y += info.getHeight();
		setSize(maxWidth, y);
		return getSize();
	}

	@Override
	public void removeLayoutComponent(Component arg0) {}
}
