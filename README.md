
<ul>
	<li>I made this for fun.</li>
	<li>This is suppost to run locally. To run it you need ruby, roda and a gem called geocoder. You also need an API KEY to google maps. It's defined in the layout.erb.</li>
	<li>This uses a text file named "ips.txt" from the root directory to read the IP's to map.</li>
	<li>One per line and I validate if the IP is valid. Only that.</li>
	<li>There is a limit of requests you can make. Please read it <a href="https://github.com/alexreisner/geocoder">here</a>. Fork it, use a API Key and abuse it.</li>
</ul>
<p>So, to run it just add the IP's you want, change the key to google API and <code>$ rackup </code>.