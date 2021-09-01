.class public final synthetic Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;->f$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;

    iput p2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;->f$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;

    iget p0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;->f$1:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->lambda$initData$0$BgOptimizeAdvanceSettings(ILandroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
