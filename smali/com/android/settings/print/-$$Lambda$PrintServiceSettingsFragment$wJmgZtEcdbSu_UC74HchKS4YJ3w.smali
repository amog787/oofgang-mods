.class public final synthetic Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$wJmgZtEcdbSu_UC74HchKS4YJ3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$wJmgZtEcdbSu_UC74HchKS4YJ3w;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$wJmgZtEcdbSu_UC74HchKS4YJ3w;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->lambda$initComponents$0$PrintServiceSettingsFragment(Lcom/android/settings/widget/ToggleSwitch;Z)Z

    move-result p0

    return p0
.end method
