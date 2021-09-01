.class public Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;
.super Ljava/lang/Object;
.source "TelephonyStatusControlSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mControllers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;->mControllers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
    .locals 2

    .line 64
    new-instance v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;->mControllers:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;-><init>(Ljava/util/Collection;Lcom/android/settings/network/telephony/TelephonyStatusControlSession$1;)V

    return-object v0
.end method
