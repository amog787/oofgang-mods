.class Lcom/android/settings/UserCredentialsSettings$Credential;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Credential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final alias:Ljava/lang/String;

.field final storedTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field

.field final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 506
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$1;

    invoke-direct {v0}, Lcom/android/settings/UserCredentialsSettings$Credential$1;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 484
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    const-wide/16 v5, 0x1

    .line 485
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    shl-long/2addr v5, v7

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 486
    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    .line 476
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    .line 477
    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public getStoredTypes()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    return-object p0
.end method

.method public isSystem()Z
    .locals 1

    .line 518
    iget p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 492
    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-wide/16 v2, 0x1

    .line 497
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
