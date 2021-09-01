.class Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;
.super Ljava/lang/Object;
.source "OPNightModeLevelPreferenceCategory.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->initView(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0, p2, p3}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onBrightnessProgressChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onBrightnessStartTrackingTouch(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onBrightnessStopTrackingTouch(I)V

    :cond_0
    return-void
.end method
