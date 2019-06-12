from dmoj.result import CheckerResult
from dmoj.error import InternalError
from dmoj.utils.unicode import utf8text

def check(proc_output, judge_output, judge_input, point_value, submission_source, **kwargs):
    try:
        proc_output = utf8text(proc_output)
        judge_input = utf8text(judge_input)
        judge_output = utf8text(judge_output)
        submission_source = utf8text(submission_source).replace('\r', '')

    except (ValueError, IndexError, TypeError, OverflowError) as e:
        return CheckerResult(False, 0)
    except Exception as e:
        raise InternalError('Error in checker - ' + str(e))
