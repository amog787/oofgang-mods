.class Lcom/android/server/am/ivd$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/ivd;


# direct methods
.method constructor <init>(Lcom/android/server/am/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->zta:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd$sis;->zta:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->gwm(Lcom/android/server/am/ivd;)V

    return-void
.end method
