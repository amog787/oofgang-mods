.class public final synthetic Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$6ZXep8K3Kx7KiucsshYGPcS5c0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$6ZXep8K3Kx7KiucsshYGPcS5c0Y;->f$0:Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$6ZXep8K3Kx7KiucsshYGPcS5c0Y;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$6ZXep8K3Kx7KiucsshYGPcS5c0Y;->f$0:Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$6ZXep8K3Kx7KiucsshYGPcS5c0Y;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->lambda$displayPreference$0$FeatureFlagsPreferenceController(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
