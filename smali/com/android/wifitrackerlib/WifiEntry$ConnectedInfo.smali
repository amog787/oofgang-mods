.class public Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
.super Ljava/lang/Object;
.source "WifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedInfo"
.end annotation


# instance fields
.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequencyMhz:I

.field public gateway:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public ipv6Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public linkSpeedMbps:I

.field public subnetMask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
