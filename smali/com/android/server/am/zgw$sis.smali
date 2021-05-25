.class Lcom/android/server/am/zgw$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "sis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/zgw$sis$zta;
    }
.end annotation


# instance fields
.field cno:I

.field kth:I

.field rtg:J

.field sis:Ljava/lang/String;

.field ssp:J

.field tsu:Ljava/lang/String;

.field you:Ljava/lang/String;

.field zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/zgw$sis;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/zgw$sis;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/zgw$sis;->tsu:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/zgw$sis;->sis:Ljava/lang/String;

    return-void
.end method
