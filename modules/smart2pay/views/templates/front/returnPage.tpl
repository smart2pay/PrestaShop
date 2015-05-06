{*
* 2015 Smart2Pay
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade this plugin
* in the future.
*
*  @author Smart2Pay
*  @copyright  2015 Smart2Pay
*}
<div class="container">
    <div class="top-hr"></div>
</div>
<h1 class="page-heading">{l s='Thank you for shopping with us!' mod='smart2pay'}</h1>
<h3 style="text-align: center;">{$message}</h3>
{if !empty( $transaction_extra_data )}
    <p>&nbsp;</p>
    <p>{l s='In order to complete the payment you will need the details below' mod='smart2pay'}:</p>
    <table>
    <tbody>
    {foreach from=$transaction_extra_titles key=key item=val name=transtitles}
        {if empty( $transaction_extra_data[$key] )}
            {continue}
        {/if}
        <tr>
            <td><strong>{l s=$val mod='smart2pay'}</strong></td>
            <td>{$transaction_extra_data[$key]}</td>
        </tr>
    {/foreach}
    </tbody>
    </table>
{/if}