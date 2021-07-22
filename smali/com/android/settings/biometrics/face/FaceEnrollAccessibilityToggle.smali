.class public Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;
.super Landroid/widget/LinearLayout;
.source "FaceEnrollAccessibilityToggle.java"


# instance fields
.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/android/settings/R$layout;->face_enroll_accessibility_toggle:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget-object p3, Lcom/android/settings/R$styleable;->FaceEnrollAccessibilityToggle:[I

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    :try_start_0
    sget p2, Lcom/android/settings/R$styleable;->FaceEnrollAccessibilityToggle_messageText:I

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 56
    sget p3, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    sget p1, Lcom/android/settings/R$id;->toggle:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setFocusable(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    throw p0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/Switch;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
