.class Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WifiCallingDisclaimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x1

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 104
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->access$002(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;Z)Z

    .line 105
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->access$100(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V

    .line 106
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
