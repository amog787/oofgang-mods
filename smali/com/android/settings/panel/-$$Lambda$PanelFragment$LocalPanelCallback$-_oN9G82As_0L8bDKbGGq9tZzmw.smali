.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$-_oN9G82As_0L8bDKbGGq9tZzmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$-_oN9G82As_0L8bDKbGGq9tZzmw;->f$0:Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$-_oN9G82As_0L8bDKbGGq9tZzmw;->f$0:Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onHeaderChanged$1$PanelFragment$LocalPanelCallback()V

    return-void
.end method
