<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- modal -->
<div class="modal fade" id="mModal" tabindex="-1" role="dialog" aria-labelledby="mLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title text-primary" id="mLabel"></h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<jsp:include page="${form}.jsp"></jsp:include>
			</div>
			<div class="modal-footer mFooter">
				<button type="button" class="btn btn-danger waves-effect waves-light btn-memo-create">Save</button>
				<button type="button" class="btn btn-outline-secondary waves-effect waves-light btn-memo-cancel" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>