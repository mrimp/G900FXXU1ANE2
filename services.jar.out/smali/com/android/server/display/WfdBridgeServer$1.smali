.class Lcom/android/server/display/WfdBridgeServer$1;
.super Ljava/lang/Object;
.source "WfdBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WfdBridgeServer;


# direct methods
.method constructor <init>(Lcom/android/server/display/WfdBridgeServer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeServer$1;->this$0:Lcom/android/server/display/WfdBridgeServer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer$1;->this$0:Lcom/android/server/display/WfdBridgeServer;

    #calls: Lcom/android/server/display/WfdBridgeServer;->checkClientsSocket()V
    invoke-static {v0}, Lcom/android/server/display/WfdBridgeServer;->access$000(Lcom/android/server/display/WfdBridgeServer;)V

    return-void
.end method
