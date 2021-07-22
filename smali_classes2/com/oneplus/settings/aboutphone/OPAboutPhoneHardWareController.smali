.class public Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
.super Ljava/lang/Object;
.source "OPAboutPhoneHardWareController.java"


# instance fields
.field private mCameraMessage:Ljava/lang/String;

.field private mCpuMessage:Ljava/lang/String;

.field private final mHardWareInfoView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mScreenMessage:Ljava/lang/String;

.field private mStorageMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 29
    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->op_about_phone_hareware_layout:I

    const/4 p3, 0x0

    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 1

    .line 24
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public done()Landroid/view/View;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phone_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->cpu_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->storage_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->camera_message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->screen_message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    return-object p0
.end method

.method public setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    return-object p0
.end method
