.class Lcom/android/settings/vpn2/AppVpnInfo;
.super Ljava/lang/Object;
.source "AppVpnInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    .line 19
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 24
    check-cast p1, Lcom/android/settings/vpn2/AppVpnInfo;

    .line 26
    iget-object v0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget p1, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget p0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    sub-int v0, p1, p0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 35
    instance-of v0, p1, Lcom/android/settings/vpn2/AppVpnInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/android/settings/vpn2/AppVpnInfo;

    .line 37
    iget v0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
