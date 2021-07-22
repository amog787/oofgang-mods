.class public final synthetic Lcom/android/settings/network/-$$Lambda$EthernetTetherPreferenceController$1$AvOfxbGpa_2vIeD9ljahcYUG4L4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/EthernetTetherPreferenceController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/EthernetTetherPreferenceController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$EthernetTetherPreferenceController$1$AvOfxbGpa_2vIeD9ljahcYUG4L4;->f$0:Lcom/android/settings/network/EthernetTetherPreferenceController$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$EthernetTetherPreferenceController$1$AvOfxbGpa_2vIeD9ljahcYUG4L4;->f$0:Lcom/android/settings/network/EthernetTetherPreferenceController$1;

    invoke-virtual {p0}, Lcom/android/settings/network/EthernetTetherPreferenceController$1;->lambda$onAvailabilityChanged$0$EthernetTetherPreferenceController$1()V

    return-void
.end method
