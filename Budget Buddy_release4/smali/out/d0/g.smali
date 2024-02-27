.class public Ld0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ld0/e;

.field final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ld0/e;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/g;->a:Ld0/e;

    iput-object p2, p0, Ld0/g;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Ld0/g;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
