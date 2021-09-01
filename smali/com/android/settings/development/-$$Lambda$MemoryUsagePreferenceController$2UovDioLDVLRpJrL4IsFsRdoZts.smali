.class public final synthetic Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/MemoryUsagePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;->f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;->f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->lambda$updateState$1$MemoryUsagePreferenceController()V

    return-void
.end method
