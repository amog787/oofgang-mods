.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 603
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 609
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method
