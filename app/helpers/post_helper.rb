module PostHelper
    def post_check_icon(check_x, post_x)
        if post_x then
            if check_x then
                # 正解
                '<b-tooltip label="正解" position="is-left"><b-icon type="is-success" icon="check"></b-tooltip>'.html_safe
            else
                # 未選択
                '<b-tooltip label="未選択" position="is-left"><b-icon type="is-danger" icon="check"></b-tooltip>'.html_safe
            end
        else
            if check_x then
                # 誤答
                '<b-tooltip label="誤答" position="is-left"><b-icon type="is-danger" icon="alert-circle"></b-tooltip>'.html_safe
            else
                '<b-icon type="is-white" icon="radiobox-blank">'.html_safe
            end
        end
    end

    def post_check_result(check, post)
        ret = false
        if post.ok1 && !check.has_key?(:ok1) then
            # 未選択(不正解)
        elsif !post.ok1 && check.has_key?(:ok1) then
            # 誤答
        elsif post.ok2 && !check.has_key?(:ok2) then
            # 未選択(不正解)
        elsif !post.ok2 && check.has_key?(:ok2) then
            # 誤答
        elsif post.ok3 && !check.has_key?(:ok3) then
            # 未選択(不正解)
        elsif !post.ok3 && check.has_key?(:ok3) then
            # 誤答
        elsif post.ok4 && !check.has_key?(:ok4) then
            # 未選択(不正解)
        elsif !post.ok4 && check.has_key?(:ok4) then
            # 誤答
        else
            # 全問正解
            ret = true
        end

        if ret then
            '<b-field type="is-success" message="全問正解">'.html_safe
        else
            '<b-field type="is-danger" message="不正解">'.html_safe
        end
    end

end
