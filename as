$ch = curl_init();
curl_setopt_array($ch, [
	CURLOPT_URL => "https://cca-manila.edu.ph/?wc-ajax=checkout",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_SSL_VERIFYPEER => false,
	CURLOPT_SSL_VERIFYHOST => false,
	CURLOPT_HTTPHEADER => [
		"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0",
		"Accept: application/json, text/javascript, */*; q=0.01",
		"Accept-Language: en-US,en;q=0.5",
		"Referer: https://cca-manila.edu.ph/checkout/",
		"Content-Type: application/x-www-form-urlencoded; charset=UTF-8",
		"X-Requested-With: XMLHttpRequest",
		"Origin: https://cca-manila.edu.ph",
		"Connection: keep-alive",
		"Cookie: _ga_9FJMSBZK90=GS1.1.1710500726.3.1.1710500733.0.0.0; _ga=GA1.1.1792074367.1702772493; _fbp=fb.2.1702772494427.617111259; woocommerce_items_in_cart=1; woocommerce_cart_hash=f9526a80e4fc22554f4497b6f7f72e73; wp_woocommerce_session_e18c3c4e84b62045412ce23d7aaac5af=t_49951e4ce761f6c79bcba260dc8654%^7C^%^7C1710666816^%^7C^%^7C1710663216^%^7C^%^7C21b9fa0749140871712dd652bbc64ffe; PHPSESSID=2d468b6fa5b477f68c118cc6e0cbe4c2",
		"Sec-Fetch-Dest: empty",
		"Sec-Fetch-Mode: cors",
		"Sec-Fetch-Site: same-origin",
		"Pragma: no-cache",
		"Cache-Control: no-cache"
	],

	CURLOPT_POSTFIELDS => "billing_first_name=&billing_last_name=&billing_company=&billing_country=PH&billing_address_1=&billing_address_2=&billing_city=&billing_state=00&billing_postcode=&billing_phone=&billing_email=&order_comments=&alumni=&payment_method=bacs&woocommerce-process-checkout-nonce=64d7711ecf&_wp_http_referer=^%^2F^%^3Fwc-ajax^%^3Dupdate_order_review"
]);

$response = curl_exec($ch);
curl_close($ch);
echo $response;