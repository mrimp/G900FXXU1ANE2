.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;
.super Ljava/lang/Object;
.source "ApdrRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    #calls: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    #setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->access$200(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->access$300(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1c20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
