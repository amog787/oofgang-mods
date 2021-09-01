.class public Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;
.super Landroidx/preference/PreferenceCategory;
.source "OPFactoryResetConfirmCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;
    }
.end annotation


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private mLayoutResId:I

.field public mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 21
    sget v0, Lcom/android/settings/R$layout;->op_master_clear_preference_list_fragment:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget p2, Lcom/android/settings/R$layout;->op_master_clear_preference_list_fragment:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget p2, Lcom/android/settings/R$layout;->op_master_clear_preference_list_fragment:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 44
    iget p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 60
    sget v0, Lcom/android/settings/R$id;->execute_master_clear:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;->onFactoryResetConfirmClick()V

    :cond_0
    return-void
.end method

.method public setConfirmButtonText(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnFactoryResetConfirmListener(Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;

    return-void
.end method
