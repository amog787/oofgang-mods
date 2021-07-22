.class Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/network/view/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 130
    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    .line 131
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 133
    invoke-virtual {p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->getTabTitle()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    if-nez p2, :cond_0

    .line 135
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    const/4 p2, 0x0

    .line 136
    :goto_0
    iget-object v0, p1, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    iget-object v0, v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    iget-object p1, p1, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->titles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method
