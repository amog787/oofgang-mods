.class Landroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1052
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 1053
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    .line 1054
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 1055
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1056
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p0, v0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, p0, :cond_2

    .line 1059
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 1060
    :cond_2
    iget-object p0, v0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, p0, :cond_3

    .line 1061
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object p0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, p0, :cond_4

    .line 1063
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    :cond_4
    :goto_0
    return-void
.end method
