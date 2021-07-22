.class Lcom/oneplus/settings/ui/OPSeekBarPreference$1;
.super Ljava/lang/Object;
.source "OPSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPSeekBarPreference;->initSeekBar(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPSeekBarPreference;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 91
    invoke-interface {p0, p1}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0, p1}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
