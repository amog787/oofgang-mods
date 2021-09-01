.class Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 133
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 134
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_0

    .line 135
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_1

    .line 140
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_8

    .line 143
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 145
    :cond_2
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 146
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 147
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 151
    :goto_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_4

    .line 152
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_4
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_8

    .line 155
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 159
    :cond_5
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_6

    .line 160
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    :goto_2
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_7

    .line 165
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_7
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_8

    .line 168
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
