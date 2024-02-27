.class public final synthetic Lb0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb0/q;

.field public final synthetic f:Lb0/m;


# direct methods
.method public synthetic constructor <init>(Lb0/q;Lb0/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/p;->e:Lb0/q;

    iput-object p2, p0, Lb0/p;->f:Lb0/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lb0/p;->e:Lb0/q;

    iget-object v1, p0, Lb0/p;->f:Lb0/m;

    invoke-static {v0, v1}, Lb0/q;->d(Lb0/q;Lb0/m;)V

    return-void
.end method
