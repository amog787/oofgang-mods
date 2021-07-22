.class public final synthetic Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    return-void
.end method


# virtual methods
.method public final onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method
