.class Lcom/android/settings/informativescreen/InformativeScreenSettings$1;
.super Landroid/database/ContentObserver;
.source "InformativeScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/informativescreen/InformativeScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/informativescreen/InformativeScreenSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$1;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "InformativeScreenSettings"

    const-string v1, "onChange() Informative Screen Switch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$1;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->updateInformativeScreenPage()V

    return-void
.end method
