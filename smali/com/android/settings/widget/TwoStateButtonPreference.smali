.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "TwoStateButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButtonOff:Landroid/widget/Button;

.field private final mButtonOn:Landroid/widget/Button;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 42
    sget v0, Lcom/android/settings/R$attr;->twoStateButtonPreferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    .line 47
    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lcom/android/settings/R$styleable;->TwoStateButtonPreference_textOn:I

    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 54
    sget v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference_textOff:I

    sget v1, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget p1, Lcom/android/settings/R$id;->state_on_button:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p1, Lcom/android/settings/R$id;->state_off_button:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/widget/TwoStateButtonPreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStateOffButton()Landroid/widget/Button;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    return-object p0
.end method

.method public getStateOnButton()Landroid/widget/Button;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->state_on_button:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
