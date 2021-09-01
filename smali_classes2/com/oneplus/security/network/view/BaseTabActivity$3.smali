.class Lcom/oneplus/security/network/view/BaseTabActivity$3;
.super Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/BaseTabActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$3;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-direct {p0, p2}, Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$3;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    iget-object v1, v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 84
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$3;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->onTabPageSelected(I)V

    return-void
.end method
