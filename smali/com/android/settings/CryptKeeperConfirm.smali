.class public Lcom/android/settings/CryptKeeperConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 107
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$1;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->execute_encrypt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 160
    iget-object p0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x21

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->crypt_keeper_confirm_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 172
    sget p2, Lcom/android/settings/R$layout;->crypt_keeper_confirm:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 174
    iget-object p0, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method
