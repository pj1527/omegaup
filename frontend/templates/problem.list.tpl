{include file='problem_search_bar.tpl'}
<link rel="stylesheet" href="/third_party/css/font-awesome.min.css">
<link rel="stylesheet" href="/third_party/css/starrr.css">

<div class="wait_for_ajax panel panel-default" id="problems_list" >
	<div class="panel-heading">
		<h3 class="panel-title">{#wordsProblems#}</h3>
	</div>
	<table class="table problem-list" id="problem-list-table">
		<thead>
			<tr>
				<th class="contains-long-desc">{#wordsTitle#}</th>
				<th class="numericColumn">{#wordsRuns#}</th>
				<th class="numericColumn">{#wordsAccepted#}</th>
				<th class="numericColumn">{#wordsRatio#}</th>
				<th class="numericColumn">
					{#wordsPointsForRank#}
					<a rel="tooltip" href="http://blog.omegaup.com/2014/06/el-nuevo-ranking-de-omegaup/" data-toggle="tooltip" title data-original-title="{#wordsPointsForRankTooltip#}"><img src="/media/question.png"></a>
				</th>
				<th class="numericColumn">{#wordsMyScore#}</th>
				<th class="rating">{#wordsRating#}</th>
			</tr>
		</thead>
		<tbody>
			{foreach item=problem from=$problems}
				<tr>
				<td><a href="/arena/problem/{$problem.alias}">{$problem.title}</a>{if $problem.public == 0} <span class="glyphicon glyphicon-eye-close" title="{#wordsPrivate#}"></span>{/if}
					{if count($problem.tags) > 0}
					<div class="tag-list" title="{" "|implode:$problem.tags|escape}">
					{foreach item=tag from=$problem.tags}
						<a class="tag" href="/problem/?tag={$tag|escape}">{$tag|escape}</a>
					{/foreach}
					</div>
					{/if}
				</td>
				<td class="numericColumn">{$problem.submissions}</td>
				<td class="numericColumn">{$problem.accepted}</td>
				<td class="numericColumn">{100 * $problem.ratio}%</td>
				<td class="numericColumn">{$problem.points}</td>
				<td class="numericColumn">{$problem.score}</td>
				<td class="rating" id="rating">{$problem.rating}</td>
				</tr>
			{/foreach}
		</tbody>
	</table>

	<script src="/third_party/js/starrr.js"></script>
	<script src="/js/problem.list.js?ver=aa36a5"></script>

	{include file='pager_bar.tpl'}
</div>
